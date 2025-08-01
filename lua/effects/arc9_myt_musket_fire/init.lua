EFFECT.Duration			= 0.25;
EFFECT.Size				= 32;

EFFECT.ParticleName = "arc9_myt_musket_fire"

local MaterialGlow		= Material("effects/awoi_musket_flash");

function EFFECT:Init(data)

	self.Position = data:GetOrigin();
	self.Normal = data:GetNormal();
	self.LifeTime = self.Duration;

	-- particles
	local emitter = ParticleEmitter(self.Position);
	if(emitter) then
		
		for i = 1, 48 do
			local smokeTexture	= "effects/awoi_musket_smoke_01"
			
			local particle = emitter:Add(smokeTexture, self.Position+self.Normal*2);
			particle:SetVelocity((self.Normal+VectorRand()*0.10):GetNormal()*math.Rand(1000, 10000));
			particle:SetDieTime(math.Rand(15, 20));
			particle:SetStartAlpha(150);
			particle:SetEndAlpha(0);
			particle:SetStartSize(math.Rand(10, 20));
			particle:SetEndSize(math.Rand(20, 40));
			particle:SetGravity(Vector(math.Rand(0, 500), math.Rand(250, 1000), math.Rand(-250, 250)));
			particle:SetRoll(math.Rand(0, 360));
			particle:SetRollDelta(math.Rand(-0.5, 0.5));
			local colour = math.Rand(50, 150);
			particle:SetColor(colour, colour, colour, 100);
			particle:SetCollide(false);
			particle:SetAirResistance(2000);
		end
		emitter:Finish();
	end
	
	local emitter_s = ParticleEmitter(self.Position);
	if(emitter_s) then
		
		for i = 1, 16 do
			local smokeTexture	= "effects/awoi_musket_flash"
			
			local particle_s = emitter_s:Add(smokeTexture, self.Position+self.Normal*2);
			particle_s:SetVelocity((self.Normal+VectorRand()*0.10):GetNormal()*math.Rand(1000, 2000));
			particle_s:SetDieTime(math.Rand(0.2, 0.5));
			particle_s:SetStartAlpha(150);
			particle_s:SetEndAlpha(0);
			particle_s:SetStartSize(math.Rand(1, 2));
			particle_s:SetEndSize(math.Rand(1, 2));
			particle_s:SetGravity(Vector(0, 0, -1000));
			particle_s:SetCollide(true);
			particle_s:SetAirResistance(1000);
		end
		emitter_s:Finish();
	end
	
	local light = DynamicLight(0);
	if(light) then

		light.Pos = self.Position;
		light.Size = 128;
		light.Decay = 256;
		light.R = 226;
		light.G = 158;
		light.B = 79;
		light.Brightness = 3;
		light.DieTime = CurTime()+self.Duration;

	end
end


function EFFECT:Think()

	self.LifeTime = self.LifeTime - FrameTime();
	return self.LifeTime > 0;
	
end


function EFFECT:Render()

	local frac = math.max(0, self.LifeTime/self.Duration);
	local rgb = 255*frac;
	local colour = Color(rgb, rgb, rgb, 255);

	render.SetMaterial(MaterialGlow);
	render.DrawQuadEasy(self.Position+self.Normal, self.Normal, self.Size, self.Size, colour);

end
