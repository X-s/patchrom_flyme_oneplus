.class Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;
.super Ljava/lang/Object;
.source "DpmNsrmBackgroundEventHdlr.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;
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
    .line 342
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 344
    const-string/jumbo v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGpsStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    packed-switch p1, :pswitch_data_0

    .line 355
    :pswitch_0
    const-string/jumbo v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGpsStatusChanged unhandled event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-static {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-wrap1(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;)V

    .line 343
    return-void

    .line 349
    :pswitch_1
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set4(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr$2;->this$0:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->-set4(Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;Z)Z

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
