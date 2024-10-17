ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Bolt"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/crossbow_bolt.mdl"
ENT.Collectable = false

AddCSLuaFile()

function ENT:Initialize()
		local pb_vert = 1
		local pb_hor = 1
    if SERVER then
		self:SetModel(self.Model)
		self:SetAngles(self.Owner:EyeAngles())
		self:PhysicsInitBox( Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor) )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )

        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self.dt = CurTime() + 15

        timer.Simple(0, function()
            if !IsValid(self) then return end
            self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
        end)
    end
end

function ENT:PhysicsCollide(data, physobj)
    if SERVER then
        if data.HitEntity:GetClass() == "worldspawn" then
            self:SetMoveType( MOVETYPE_NONE )
			self:SetAngles(self.Owner:EyeAngles())
            self:SetPos( data.HitPos - (data.HitNormal * 2) )
            self:EmitSound( "physics/metal/metal_computer_impact_bullet1.wav" )
            self.dt = CurTime() + 15
            self.Collectable = true

            self:SetTrigger(true)
            self:UseTriggerBounds(true, 24)
        else
            self:EmitSound( "weapons/crossbow/hitbod1.wav" )
            local damage = DamageInfo()
            damage:SetAttacker( self.Owner )
            damage:SetDamage( 120 )
            damage:SetDamageType( DMG_SLASH )
            damage:SetInflictor( self )
            damage:SetReportedPosition( data.HitPos )
            damage:SetDamagePosition( data.HitPos )
            data.HitEntity:TakeDamageInfo( damage )
            self:Remove()
        end
    end
end

function ENT:Use(ply)
    if !ply:IsPlayer() then return end

    ply:GiveAmmo(1, "xbowbolt", false)
    self:Remove()
end

--[[
function ENT:StartTouch(ply)
    if !ply:IsPlayer() then return end
	
	ply:GiveAmmo(1, "xbowbolt")
	self:Remove()
end
]]

function ENT:Think()
    if SERVER then
        if CurTime() >= self.dt then
            self:Remove()
        end
    end
end

function ENT:Draw()
    if CLIENT then
        self:DrawModel()
    end
end