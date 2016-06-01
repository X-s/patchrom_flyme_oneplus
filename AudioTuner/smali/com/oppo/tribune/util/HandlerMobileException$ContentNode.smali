.class Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;
.super Ljava/lang/Object;
.source "HandlerMobileException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/HandlerMobileException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentNode"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public endIndex:I

.field public startIndex:I

.field final synthetic this$0:Lcom/oppo/tribune/util/HandlerMobileException;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/util/HandlerMobileException;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;->this$0:Lcom/oppo/tribune/util/HandlerMobileException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/util/HandlerMobileException;Lcom/oppo/tribune/util/HandlerMobileException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/util/HandlerMobileException;
    .param p2, "x1"    # Lcom/oppo/tribune/util/HandlerMobileException$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/oppo/tribune/util/HandlerMobileException$ContentNode;-><init>(Lcom/oppo/tribune/util/HandlerMobileException;)V

    return-void
.end method
