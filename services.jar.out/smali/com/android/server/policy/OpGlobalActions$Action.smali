.class public final enum Lcom/android/server/policy/OpGlobalActions$Action;
.super Ljava/lang/Enum;
.source "OpGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/OpGlobalActions$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/OpGlobalActions$Action;

.field public static final enum BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

.field public static final enum POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

.field public static final enum REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

.field public static final enum RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/android/server/policy/OpGlobalActions$Action;

    const-string/jumbo v1, "POWER_OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$Action;

    const-string/jumbo v1, "REBOOT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$Action;->REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$Action;

    const-string/jumbo v1, "RECOVERY"

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$Action;->RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$Action;

    const-string/jumbo v1, "BOOTLOADER"

    invoke-direct {v0, v1, v5}, Lcom/android/server/policy/OpGlobalActions$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/policy/OpGlobalActions$Action;

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$Action;->POWER_OFF:Lcom/android/server/policy/OpGlobalActions$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$Action;->REBOOT:Lcom/android/server/policy/OpGlobalActions$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$Action;->RECOVERY:Lcom/android/server/policy/OpGlobalActions$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$Action;->BOOTLOADER:Lcom/android/server/policy/OpGlobalActions$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$Action;->$VALUES:[Lcom/android/server/policy/OpGlobalActions$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/OpGlobalActions$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lcom/android/server/policy/OpGlobalActions$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OpGlobalActions$Action;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/OpGlobalActions$Action;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$Action;->$VALUES:[Lcom/android/server/policy/OpGlobalActions$Action;

    return-object v0
.end method
