.class public Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;
.super Ljava/lang/Object;
.source "TribunePostItemLoadAndUseClkHandler.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;)Lcom/oneplus/tuner/listener/DownloadAndUseListener;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    return-object v0
.end method


# virtual methods
.method public getLoadAndUseClkListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "position"    # I
    .param p2, "itemView"    # Lcom/oppo/tribune/square/TribunePostItemView;
    .param p3, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 35
    new-instance v0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    invoke-direct {v0, p0, p3}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;-><init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V

    return-object v0
.end method

.method public setDownloadAndUseListener(Lcom/oneplus/tuner/listener/DownloadAndUseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->mDownloadAndUseListener:Lcom/oneplus/tuner/listener/DownloadAndUseListener;

    .line 31
    return-void
.end method
