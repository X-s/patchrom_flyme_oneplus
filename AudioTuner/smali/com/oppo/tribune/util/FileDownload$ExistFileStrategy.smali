.class public final enum Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;
.super Ljava/lang/Enum;
.source "FileDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/FileDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExistFileStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

.field public static final enum CONTINUE_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

.field public static final enum RETURN_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;


# instance fields
.field private final shouldContinue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    new-instance v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    const-string v1, "CONTINUE_WHEN_EXISTS"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->CONTINUE_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    new-instance v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    const-string v1, "RETURN_WHEN_EXISTS"

    invoke-direct {v0, v1, v3, v2}, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->RETURN_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    sget-object v1, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->CONTINUE_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->RETURN_WHEN_EXISTS:Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->$VALUES:[Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "shouldContinue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput-boolean p3, p0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->shouldContinue:Z

    .line 211
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    const-class v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    return-object v0
.end method

.method public static values()[Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->$VALUES:[Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    invoke-virtual {v0}, [Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;

    return-object v0
.end method


# virtual methods
.method public final shouldContinue()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/oppo/tribune/util/FileDownload$ExistFileStrategy;->shouldContinue:Z

    return v0
.end method
