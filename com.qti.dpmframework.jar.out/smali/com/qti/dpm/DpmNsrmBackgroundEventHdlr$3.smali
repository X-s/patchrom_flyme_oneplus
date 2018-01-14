.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;
.super Ljava/util/TimerTask;
.source "DpmNsrmBackgroundEventHdlr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;


# direct methods
.method constructor <init>(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$3;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap0(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    .line 425
    return-void
.end method
