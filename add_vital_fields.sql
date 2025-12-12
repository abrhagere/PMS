-- Add new fields to patient_vitals table for enhanced vital signs recording
-- Trauma, AVPU, and Mobility fields

USE pms;

-- Add trauma field
ALTER TABLE patient_vitals 
ADD COLUMN IF NOT EXISTS trauma VARCHAR(50) AFTER respiratory_rate;

-- Add AVPU field (Alert, Voice, Pain, Unresponsive)
ALTER TABLE patient_vitals 
ADD COLUMN IF NOT EXISTS avpu VARCHAR(20) AFTER oxygen_saturation;

-- Add mobility field
ALTER TABLE patient_vitals 
ADD COLUMN IF NOT EXISTS mobility VARCHAR(50) AFTER height;

-- Update blood_pressure to support separate systolic and diastolic if needed
-- Note: Current structure uses VARCHAR(10) which can store "120/80" format
-- We'll keep this but also add separate fields for easier querying
ALTER TABLE patient_vitals 
ADD COLUMN IF NOT EXISTS bp_systolic INT AFTER temperature,
ADD COLUMN IF NOT EXISTS bp_diastolic INT AFTER bp_systolic;

SELECT 'Vital signs fields added successfully!' as status;

