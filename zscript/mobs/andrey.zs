class Andrey : Actor
{
    Default
    {
        Health 60;                    // Здоровье
        Radius 20;                    // Радиус коллизии
        Height 56;                    // Высота коллизии
        Speed 8;                      // Скорость передвижения
        PainChance 200;               // Шанс войти в состояние боли при уроне (0-255)
        Monster;                      // Флаг: игра считает актора монстром
        +FLOORCLIP                    // Флаг: моб корректно стоит на движущихся полах
        SeeSound "grunt/sight";       // Звук при обнаружении игрока
        PainSound "grunt/pain";       // Звук получения урона
        DeathSound "grunt/death";     // Звук смерти
        ActiveSound "grunt/active";   // Фоновый звук, пока моб бродит
        Obituary "%o был убит Зомби."; // Сообщение о смерти игрока в консоли
    }

    // Блок состояний (States) отвечает за анимацию и логику поведения
    States
    {
    Spawn:
        POSS AB 10 A_Look;            // Анимация ожидания. Моб ищет врага (A_Look)
        Loop;                         // Циклим состояние, пока враг не найден
    See:
        POSS AABBCCDD 4 A_Chase;      // Анимация бега. Моб преследует цель (A_Chase)
        Loop;
    Missile:
        POSS E 10 A_FaceTarget;       // Поворот к цели перед атакой
        POSS F 8 A_PosAttack;         // Момент выстрела (например, стандартная атака зомби)
        POSS E 8;
        Goto See;                     // Возврат к преследованию
    Pain:
        POSS G 3;
        POSS G 3 A_Pain;              // Проигрывание звука боли
        Goto See;
    Death:
        POSS H 5;
        POSS I 5 A_Scream;            // Звук смерти
        POSS J 5 A_NoBlocking;        // Отключение коллизии (чтобы сквозь труп можно было пройти)
        POSS K 5;
        POSS L -1;                    // Труп остается лежать бесконечно (-1)
        Stop;
    }
}
