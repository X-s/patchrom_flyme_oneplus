.class Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;
.super Landroid/os/Handler;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTileView;)V
    .locals 1

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    .line 393
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 394
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 397
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTileView$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTileView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/controlpanel/qs/QSTileView;->handleStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V

    .line 400
    :cond_0
    return-void
.end method
