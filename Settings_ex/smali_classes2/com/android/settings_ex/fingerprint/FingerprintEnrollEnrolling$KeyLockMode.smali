.class public final enum Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
.super Ljava/lang/Enum;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum BASE:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum FOOT:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum HOME:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum NORMAL:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum POWER:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->NORMAL:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "POWER"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 120
    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "POWER_HOME"

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 121
    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER_HOME:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 122
    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->HOME:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "FOOT"

    invoke-direct {v0, v1, v7}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->FOOT:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "BACK_SWITCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 124
    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BACK_SWITCH:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string/jumbo v1, "BASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 125
    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BASE:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 118
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->NORMAL:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER_HOME:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->HOME:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->FOOT:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BACK_SWITCH:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BASE:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->$VALUES:[Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->$VALUES:[Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    return-object v0
.end method
