.class public final enum Lcom/android/server/OemPowerUI$ProtectType;
.super Ljava/lang/Enum;
.source "OemPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/OemPowerUI$ProtectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_CHARGE_FULL:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_CONNECT_ABNORMAL:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_TEMP_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_TEMP_HIGHER:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_TEMP_LOW:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_TEMP_LOWER:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_TEMP_LOWEST:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum BATTERY_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum CHARGE_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum CHARGE_VOL_LOW:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum ProtectTpye_MAX:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

.field public static final enum SAFE_CHARGE_TIMEOUT:Lcom/android/server/OemPowerUI$ProtectType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "ProtectTpye_UNKNOW"

    invoke-direct {v0, v1, v3}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "SAFE_CHARGE_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->SAFE_CHARGE_TIMEOUT:Lcom/android/server/OemPowerUI$ProtectType;

    .line 58
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "CHARGE_VOL_LOW"

    invoke-direct {v0, v1, v5}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->CHARGE_VOL_LOW:Lcom/android/server/OemPowerUI$ProtectType;

    .line 59
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "CHARGE_VOL_HIGH"

    invoke-direct {v0, v1, v6}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->CHARGE_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    .line 60
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_VOL_HIGH"

    invoke-direct {v0, v1, v7}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    .line 61
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_CONNECT_ABNORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_CONNECT_ABNORMAL:Lcom/android/server/OemPowerUI$ProtectType;

    .line 62
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_TEMP_LOWEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOWEST:Lcom/android/server/OemPowerUI$ProtectType;

    .line 63
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_TEMP_LOWER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOWER:Lcom/android/server/OemPowerUI$ProtectType;

    .line 64
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_TEMP_LOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOW:Lcom/android/server/OemPowerUI$ProtectType;

    .line 65
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_TEMP_HIGH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    .line 66
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_TEMP_HIGHER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_HIGHER:Lcom/android/server/OemPowerUI$ProtectType;

    .line 67
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "BATTERY_CHARGE_FULL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_CHARGE_FULL:Lcom/android/server/OemPowerUI$ProtectType;

    .line 68
    new-instance v0, Lcom/android/server/OemPowerUI$ProtectType;

    const-string v1, "ProtectTpye_MAX"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemPowerUI$ProtectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_MAX:Lcom/android/server/OemPowerUI$ProtectType;

    .line 56
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/server/OemPowerUI$ProtectType;

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->SAFE_CHARGE_TIMEOUT:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->CHARGE_VOL_LOW:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->CHARGE_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_VOL_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_CONNECT_ABNORMAL:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOWEST:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOWER:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_LOW:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_HIGH:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_TEMP_HIGHER:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->BATTERY_CHARGE_FULL:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_MAX:Lcom/android/server/OemPowerUI$ProtectType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/OemPowerUI$ProtectType;->$VALUES:[Lcom/android/server/OemPowerUI$ProtectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OemPowerUI$ProtectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/android/server/OemPowerUI$ProtectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemPowerUI$ProtectType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OemPowerUI$ProtectType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/OemPowerUI$ProtectType;->$VALUES:[Lcom/android/server/OemPowerUI$ProtectType;

    invoke-virtual {v0}, [Lcom/android/server/OemPowerUI$ProtectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OemPowerUI$ProtectType;

    return-object v0
.end method
