import { TypeEntity } from 'mj_generatedentities';
import { RegisterClass } from '@memberjunction/global';
import { BaseEntity } from '@memberjunction/core';

@RegisterClass(BaseEntity, 'Types')
export class TypeEntityExtended extends TypeEntity {
    /**
     * Check if this type has a default term duration
     */
    get HasDefaultTermDuration(): boolean {
        return this.DefaultTermMonths != null && this.DefaultTermMonths > 0;
    }

    /**
     * Get default term duration in years (computed)
     */
    get DefaultTermYears(): number | null {
        if (this.DefaultTermMonths == null) return null;
        return Math.round((this.DefaultTermMonths / 12) * 10) / 10; // Round to 1 decimal
    }

    /**
     * Check if this is a standards-related type
     */
    get IsStandardsType(): boolean {
        return this.IsStandards === true;
    }
}