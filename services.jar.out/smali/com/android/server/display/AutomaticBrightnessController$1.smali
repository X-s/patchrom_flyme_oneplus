.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 292
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 293
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 295
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMinConfig:[F

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 296
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    sget-object v3, Lcom/android/server/display/BrightnessControllerUtility;->mAmbientLuxMaxConfig:[F

    aget v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->-set1(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 297
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->-get23()Lcom/android/server/display/BrightnessControllerUtility;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-get11(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/android/server/display/BrightnessControllerUtility;->calculateRate(FF)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->-set7(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 298
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2, v0, v1, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap1(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 300
    .end local v0    # "time":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-get22(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap3(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 291
    :cond_1
    return-void
.end method
