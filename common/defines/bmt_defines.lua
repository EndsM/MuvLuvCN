
NDefines.NGame.START_DATE="1999.8.7.1"
NDefines.NGame.END_DATE="2010.12.31.1"
---- Military additions

NDefines.NMilitary.DIVISION_SIZE_FOR_XP = 4                    -- how many battalions should a division have to count as a full divisions when calculating XP stuff
NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 1 			-- Max width of support in division designer.
NDefines.NMilitary.SPOTTING_QUALITY_DROP_HOURS = 3  	-- Each X hours the intel quality drops after unit was spotted.
NDefines.NMilitary.MIN_SUPPLY_CONSUMPTION = 0.05 					-- minimum value of supply consumption that a unit can get
NDefines.NMilitary.UNIT_EXPERIENCE_PER_COMBAT_HOUR = 0.0003
NDefines.NMilitary.UNIT_EXPERIENCE_SCALE = 1 
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.003
NDefines.NMilitary.TRAINING_MAX_LEVEL = 3 
NDefines.NMilitary.DEPLOY_TRAINING_MAX_LEVEL = 2 
NDefines.NMilitary.TRAINING_EXPERIENCE_SCALE = 62.0 
NDefines.NMilitary.TRAINING_ORG = 0.33 
NDefines.NMilitary.ARMY_EXP_BASE_LEVEL = 2 
NDefines.NMilitary.EXPERIENCE_COMBAT_FACTOR = 0.12 
NDefines.NMilitary.UNIT_EXP_LEVELS = { 0.1,  0.2,  0.3,  0.4,  0.5,  0.6,  0.7,  0.8,  0.9 } 		-- Experience needed to progress to the next level
NDefines.NMilitary.EXPEDITIONARY_FIELD_EXPERIENCE_SCALE = 0.66 		-- reduction factor in Xp from expeditionary forces
NDefines.NMilitary.LEADER_EXPERIENCE_SCALE = 1 	
NDefines.NMilitary.EXPERIENCE_LOSS_FACTOR = 1                  -- percentage of experienced solders who die when manpower is removed
NDefines.NMilitary.EQUIPMENT_COMBAT_LOSS_FACTOR = 0.7 	 	       -- % of equipment lost to strength ratio in combat  so some % is returned if below 1
NDefines.NMilitary.TRAINING_ATTRITION = 0.03 		  			   -- amount of extra attrition from being in training
NDefines.NMilitary.REINFORCE_CHANCE = 0.03                 	   -- base chance to join combat from back line when empty
NDefines.NMilitary.SPEED_REINFORCEMENT_BONUS = 0.01               -- chance to join combat bonus by each 100% larger than infantry base (up to 200%)
NDefines.NMilitary.FLANKED_PROVINCES_COUNT = 3 					-- Attacker has to attack from that many provinces for the attack to be considered as flanking
NDefines.NMilitary.MIN_DIVISION_DEPLOYMENT_TRAINING = 0.20 			-- Min level of division training	
NDefines.NMilitary.FIELD_MARSHAL_ARMY_BONUS_RATIO = 0.5            -- ratio to apply regular bonuses FM bonuses to armies
NDefines.NMilitary.FIELD_MARSHAL_XP_RATIO = 0.4					-- xp gain ratio for army group leaders
NDefines.NMilitary.PARACHUTE_FAILED_EQUIPMENT_DIV = 30.0		   -- When the transport plane was shot down, we drop unit with almost NONE equipment
NDefines.NMilitary.PARACHUTE_FAILED_MANPOWER_DIV = 60.0		   -- When the transport plane was shot down, we drop unit with almost NONE manpower
NDefines.NMilitary.PARACHUTE_FAILED_STR_DIV = 7.0			   -- When the transport plane was shot down, we drop unit with almost NONE strenght
NDefines.NMilitary.PARACHUTE_DISRUPTED_EQUIPMENT_DIV = 1.1   -- When the transport plane was hit, we drop unit with reduced equipment. Penalty is higher as more hits was received (and AA guns was in the state).
NDefines.NMilitary.PARACHUTE_DISRUPTED_MANPOWER_DIV = 1.7	       -- When the transport plane was hit, we drop unit with reduced manpower. Penalty is higher as more hits was received (and AA guns was in the state).
NDefines.NMilitary.PARACHUTE_DISRUPTED_STR_DIV = 2.1			   -- When the transport plane was hit, we drop unit with reduced strength. Penalty is higher as more hits was received (and AA guns was in the state).
NDefines.NMilitary.PARACHUTE_PENALTY_RANDOMNESS = 0.1			   -- Random factor for str,manpower,eq penalties.
NDefines.NMilitary.PARACHUTE_DISRUPTED_AA_PENALTY = 1            -- How much the Air defence in the state (from AA buildings level * air_defence) is scaled to affect overall disruption (equipment,manpower,str).
NDefines.NMilitary.PARACHUTE_COMPLETE_ORG = 0.4				   -- Organisation value (in %) after unit being dropped, regardless if failed, disrupted, or successful.
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_DURATION = 72   -- penalty in org regain after being parachuted. Value is in hours.
NDefines.NMilitary.PARACHUTE_ORG_REGAIN_PENALTY_MULT = -0.8	
NDefines.NMilitary.LOW_SUPPLY = 0.8
NDefines.NMilitary.UNIT_LEADER_ASSIGN_TRAIT_COST = 15.0 					-- cost to assign a new trait to a unit leader

NDefines.NMilitary.MIN_DIVISION_BRIGADE_HEIGHT = 5		-- Min height of regiments in division designer.
NDefines.NMarket.IC_TO_CIC_FACTOR = 0.5                  						-- The factor for mapping IC cost to CIC cost. Should be a positive number.
NDefines.NMarket.MAX_CIV_FACTORIES_PER_CONTRACT = 50							-- Max number of factories that can be assigned for paying single contract.
NDefines.NAI.EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO = 0.5            -- Ratio of available civilian factories to max use for equipment purchases (0.2 = 20 %, so 50 available civs would mean max ca 10 civs to spend on purchases at any one time). Gets modified by equipment_market_spend_factories AI strategy.
NDefines.NAI.EQUIPMENT_MARKET_DEFAULT_CIC_CHUNK_FOR_SALE = 2000            -- When putting things up for sale on the market, this determines the default "chunk" size of equipment the AI puts up. Gets overridden by equipment_market_min_for_sale AI strategy. (If one equipment is worth 5 CIC, a value of 150 would result in chunk sizes of 150/5 = 30 units)
NDefines.NAI.EQUIPMENT_MARKET_MAX_CONVOY_RATIO_FOR_MARKET_WAR = 0.5        -- Max ratio of total convoys to use for equipment trade while at war
NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_PERCENT = 0.01	-- The minimum number of factories we have to put on consumer goods, in percent.
NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_VALUE = 1		-- The minimum number of factories we have to put on consumer goods, by value.
NDefines.NProduction.BASE_LICENSE_IC_COST = 10  -- Base IC cost for lended license
NDefines.NMarket.PURCHASE_CONTRACT_DELIVERY_TOTAL_DAYS = 7                   	-- Number of days between purchase contract deliveries

NDefines.NMilitary.STRATEGIC_SPEED_INFRA_BASE = 10.0               -- Base speed of strategic redeployment when not on railways
NDefines.NMilitary.STRATEGIC_SPEED_INFRA_MAX = 10.0               -- Additional speed of strategic redeployment on max-level infrastructure
NDefines.NMilitary.STRATEGIC_SPEED_RAIL_BASE = 20.0               -- Base speed of strategic redeployment when on railways
NDefines.NMilitary.STRATEGIC_SPEED_RAIL_MAX = 15.0               -- Additional speed of strategic redeployment on max-level railways
NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.5
NDefines.NMilitary.LAND_EQUIPMENT_BASE_COST = 5					-- Cost in XP to upgrade a piece of equipment one level is base + ( total levels * ramp )
NDefines.NMilitary.LAND_EQUIPMENT_RAMP_COST = 5
NDefines.NMilitary.PARADROP_PENALTY = -0.1 -- Combat penalty when recently paradropped
NDefines.NMilitary.PARADROP_HOURS = 24 -- time paratroopers suffer penalties in combat
NDefines.NGame.MISSION_REMOVE_FROM_INTERFACE_DEFAULT = 1 -- Default days before a mission is removed from the interface after having failed or completed

NDefines.NMilitary.WAR_SCORE_LOSSES_RATIO = 0.1								-- war score gained for every 1000 casualties
NDefines.NMilitary.WAR_SCORE_LOSSES_MULT_IF_CAPITULATED = 0.05 				-- factor applied to war score gained from casualties if capitulated
NDefines.NMilitary.WAR_SCORE_STRATEGIC_BOMBING_FACTOR = 0.02  				-- war score gained for every damage made to enemy's building with strategic bombing
NDefines.NMilitary.WAR_SCORE_STRAT_BOMBING_DECAY_PER_CIVILIAN_FACTORY = 0.10	-- monthly war score deducted from strategic bombing for every civilian factory in service on the bombed enemy side
NDefines.NMilitary.WAR_SCORE_AIR_IC_LOSS_FACTOR = 0.01						-- war score gained for every IC of damage done to an enemy's air mission
NDefines.NMilitary.WAR_SCORE_LAND_DAMAGE_FACTOR = 0.01          				-- war score gained for every strengh damage done to an enemy's army
NDefines.NMilitary.WAR_SCORE_ATTACKER_AND_WINNER_FACTOR = 1.2					-- factor applied to war score gained for strength damage done when being the attacker and the winner
NDefines.NMilitary.WAR_SCORE_LAND_IC_LOSS_FACTOR = 0.01         				-- war score gained for every IC damage done to an enemy's army
NDefines.NMilitary.WAR_SCORE_PROVINCE_FACTOR = 1.0							-- war score gained when capturing a province for the first time, multiplied by province's worth
NDefines.NMilitary.WAR_SCORE_LEND_LEASE_GIVEN_IC_FACTOR = 0.003				-- war score gained for every IC of lend lease sent to allies
NDefines.NMilitary.WAR_SCORE_LEND_LEASE_GIVEN_FUEL_FACTOR = 0.003 			-- war score gained for every 100 units of fuel lend lease sent to allies
NDefines.NMilitary.WAR_SCORE_LEND_LEASE_RECEIVED_IC_FACTOR = 0.002  			-- war score deducted for every IC of lend lease received from allies
NDefines.NMilitary.WAR_SCORE_LEND_LEASE_RECEIVED_FUEL_FACTOR = 0.002 		-- war score deducted for every 100 units of fuel lend lease received from allies
