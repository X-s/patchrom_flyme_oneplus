.class public final enum Lcom/android/server/policy/OpGlobalActions$ActionState;
.super Ljava/lang/Enum;
.source "OpGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/OpGlobalActions$ActionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

.field public static final enum SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "SHOWING"

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "SHOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "ADVANCED_SHOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "SELECTED"

    invoke-direct {v0, v1, v7}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "ADVANCE_SELECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    new-instance v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpGlobalActions$ActionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/policy/OpGlobalActions$ActionState;

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->INIT:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCE_SELECTED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/policy/OpGlobalActions$ActionState;->CONFIRMED:Lcom/android/server/policy/OpGlobalActions$ActionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->$VALUES:[Lcom/android/server/policy/OpGlobalActions$ActionState;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/OpGlobalActions$ActionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/OpGlobalActions$ActionState;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/policy/OpGlobalActions$ActionState;->$VALUES:[Lcom/android/server/policy/OpGlobalActions$ActionState;

    invoke-virtual {v0}, [Lcom/android/server/policy/OpGlobalActions$ActionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/OpGlobalActions$ActionState;

    return-object v0
.end method
