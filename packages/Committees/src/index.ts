// Export all entity extensions
export * from './entities/TypeEntityExtended';
export * from './entities/RoleEntityExtended';
export * from './entities/TermEntityExtended';
export * from './entities/CommitteeEntityExtended';
export * from './entities/MembershipEntityExtended';
export * from './entities/MeetingEntityExtended';
export * from './entities/ActionItemEntityExtended';
export * from './entities/AgendaItemEntityExtended';
export * from './entities/AttendanceEntityExtended';
export * from './entities/ArtifactEntityExtended';

/**
 * Call this function to ensure extended entity classes are loaded.
 * This prevents tree-shaking from removing the @RegisterClass decorators.
 */
export function LoadExtendedEntities() {
  // Empty - importing this module triggers @RegisterClass decorators
}
