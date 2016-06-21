.class Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 374
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_0
    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->handleShowDetail(Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->access$500(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$Record;Z)V

    .line 377
    :cond_0
    return-void

    .line 375
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
