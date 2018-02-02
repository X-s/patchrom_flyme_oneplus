.class public final enum Lcom/oneplus/base/BaseFragment$State;
.super Ljava/lang/Enum;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/base/BaseFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/base/BaseFragment$State;

.field public static final enum CREATING:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum DESTROYED:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum DESTROYING:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum NEW:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum PAUSED:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum PAUSING:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum RESUMING:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum RUNNING:Lcom/oneplus/base/BaseFragment$State;

.field public static final enum STOPPED:Lcom/oneplus/base/BaseFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    .line 64
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "CREATING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->CREATING:Lcom/oneplus/base/BaseFragment$State;

    .line 68
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "RESUMING"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 71
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->RESUMING:Lcom/oneplus/base/BaseFragment$State;

    .line 72
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 75
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    .line 76
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "PAUSING"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->PAUSING:Lcom/oneplus/base/BaseFragment$State;

    .line 80
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->PAUSED:Lcom/oneplus/base/BaseFragment$State;

    .line 84
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 87
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->STOPPED:Lcom/oneplus/base/BaseFragment$State;

    .line 88
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "DESTROYING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->DESTROYING:Lcom/oneplus/base/BaseFragment$State;

    .line 92
    new-instance v0, Lcom/oneplus/base/BaseFragment$State;

    const-string/jumbo v1, "DESTROYED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BaseFragment$State;-><init>(Ljava/lang/String;I)V

    .line 95
    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->DESTROYED:Lcom/oneplus/base/BaseFragment$State;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/oneplus/base/BaseFragment$State;

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->NEW:Lcom/oneplus/base/BaseFragment$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->CREATING:Lcom/oneplus/base/BaseFragment$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RESUMING:Lcom/oneplus/base/BaseFragment$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->PAUSING:Lcom/oneplus/base/BaseFragment$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->PAUSED:Lcom/oneplus/base/BaseFragment$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->STOPPED:Lcom/oneplus/base/BaseFragment$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->DESTROYING:Lcom/oneplus/base/BaseFragment$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/base/BaseFragment$State;->DESTROYED:Lcom/oneplus/base/BaseFragment$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/base/BaseFragment$State;->$VALUES:[Lcom/oneplus/base/BaseFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/base/BaseFragment$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/oneplus/base/BaseFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseFragment$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/base/BaseFragment$State;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/oneplus/base/BaseFragment$State;->$VALUES:[Lcom/oneplus/base/BaseFragment$State;

    return-object v0
.end method
