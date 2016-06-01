.class Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;
.super Ljava/lang/Object;
.source "AsyncRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/manager/AsyncRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestWrap"
.end annotation


# instance fields
.field public mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

.field public mRequest:Lcom/oppo/music/manager/Request;

.field final synthetic this$0:Lcom/oppo/music/manager/AsyncRequestManager;


# direct methods
.method private constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/music/manager/AsyncRequestManager;
    .param p2, "x1"    # Lcom/oppo/music/manager/AsyncRequestManager$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;)V

    return-void
.end method
