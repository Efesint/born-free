class AndreyZ : Actor
{
    Default
    {
        Health 50;
        Radius 16;
        Height 32;
        Speed 3;
        PainChance 100;
        Monster;
        +FLOORCLIP
        +MISSILEMORE
        SeeSound "andrey/sight";
        PainSound "andrey/pain";
        DeathSound "andrey/death";
        ActiveSound "andrey/active";
        Obituary "%o killed by andrey.";
    }

    States
    {
    Spawn:
        ANDR A 10 A_Look;
        Loop;
    See:
        ANDR A 6 A_Chase;
        Loop;
    Melee:
        ANDR B 8 A_FaceTarget;
        ANDR C 8 A_CustomMeleeAttack(1);
        Goto See;
    Pain:
        ANDR D 3;
        ANDR D 3 A_Pain;
        Goto See;
    Death:
        ANDR E 5;
        ANDR F 5 A_Scream;
        ANDR G 5 A_NoBlocking;
        ANDR H -1;
        Stop;
    }
}
