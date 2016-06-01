.class public final enum Lcom/oppo/tribune/square/RefreshType;
.super Ljava/lang/Enum;
.source "RefreshType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/square/RefreshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/square/RefreshType;

.field public static final enum AFTER_INIT:Lcom/oppo/tribune/square/RefreshType;

.field public static final enum INIT_BY_DB:Lcom/oppo/tribune/square/RefreshType;

.field public static final enum LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

.field public static final enum PULL_REFRESH:Lcom/oppo/tribune/square/RefreshType;

.field public static final enum TO_INIT:Lcom/oppo/tribune/square/RefreshType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/oppo/tribune/square/RefreshType;

    const-string v1, "INIT_BY_DB"

    invoke-direct {v0, v1, v2}, Lcom/oppo/tribune/square/RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/square/RefreshType;->INIT_BY_DB:Lcom/oppo/tribune/square/RefreshType;

    .line 12
    new-instance v0, Lcom/oppo/tribune/square/RefreshType;

    const-string v1, "TO_INIT"

    invoke-direct {v0, v1, v3}, Lcom/oppo/tribune/square/RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/square/RefreshType;->TO_INIT:Lcom/oppo/tribune/square/RefreshType;

    .line 13
    new-instance v0, Lcom/oppo/tribune/square/RefreshType;

    const-string v1, "AFTER_INIT"

    invoke-direct {v0, v1, v4}, Lcom/oppo/tribune/square/RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/square/RefreshType;->AFTER_INIT:Lcom/oppo/tribune/square/RefreshType;

    .line 14
    new-instance v0, Lcom/oppo/tribune/square/RefreshType;

    const-string v1, "PULL_REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/oppo/tribune/square/RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/square/RefreshType;->PULL_REFRESH:Lcom/oppo/tribune/square/RefreshType;

    new-instance v0, Lcom/oppo/tribune/square/RefreshType;

    const-string v1, "LOAD_MORE"

    invoke-direct {v0, v1, v6}, Lcom/oppo/tribune/square/RefreshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppo/tribune/square/RefreshType;->LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oppo/tribune/square/RefreshType;

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->INIT_BY_DB:Lcom/oppo/tribune/square/RefreshType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->TO_INIT:Lcom/oppo/tribune/square/RefreshType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->AFTER_INIT:Lcom/oppo/tribune/square/RefreshType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->PULL_REFRESH:Lcom/oppo/tribune/square/RefreshType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oppo/tribune/square/RefreshType;->LOAD_MORE:Lcom/oppo/tribune/square/RefreshType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oppo/tribune/square/RefreshType;->$VALUES:[Lcom/oppo/tribune/square/RefreshType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/square/RefreshType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/oppo/tribune/square/RefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/RefreshType;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/square/RefreshType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oppo/tribune/square/RefreshType;->$VALUES:[Lcom/oppo/tribune/square/RefreshType;

    invoke-virtual {v0}, [Lcom/oppo/tribune/square/RefreshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/square/RefreshType;

    return-object v0
.end method
