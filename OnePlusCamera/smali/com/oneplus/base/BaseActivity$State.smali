.class public final enum Lcom/oneplus/base/BaseActivity$State;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/base/BaseActivity$State;

.field public static final enum CREATING:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum DESTROYED:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum DESTROYING:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum NEW:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum PAUSED:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum PAUSING:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum RESUMING:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum RUNNING:Lcom/oneplus/base/BaseActivity$State;

.field public static final enum STOPPED:Lcom/oneplus/base/BaseActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    .line 73
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "CREATING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    .line 77
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "NEW_INTENT"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    .line 81
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "RESUMING"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    .line 85
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    .line 89
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "PAUSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    .line 93
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    .line 97
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    .line 101
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "DESTROYING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    .line 105
    new-instance v0, Lcom/oneplus/base/BaseActivity$State;

    const-string v1, "DESTROYED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    .line 64
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/oneplus/base/BaseActivity$State;

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/base/BaseActivity$State;->$VALUES:[Lcom/oneplus/base/BaseActivity$State;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/base/BaseActivity$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/base/BaseActivity$State;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/oneplus/base/BaseActivity$State;->$VALUES:[Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, [Lcom/oneplus/base/BaseActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/base/BaseActivity$State;

    return-object v0
.end method
