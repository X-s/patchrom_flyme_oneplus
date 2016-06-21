.class Lcom/android/systemui_ex/qs/QSPanel$H;
.super Landroid/os/Handler;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSPanel$H;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/qs/QSPanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/qs/QSPanel$1;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/qs/QSPanel$H;-><init>(Lcom/android/systemui_ex/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 529
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 530
    iget-object v2, p0, Lcom/android/systemui_ex/qs/QSPanel$H;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui_ex/qs/QSPanel$Record;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_0
    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->handleShowDetail(Lcom/android/systemui_ex/qs/QSPanel$Record;Z)V
    invoke-static {v2, v0, v1}, Lcom/android/systemui_ex/qs/QSPanel;->access$1000(Lcom/android/systemui_ex/qs/QSPanel;Lcom/android/systemui_ex/qs/QSPanel$Record;Z)V

    .line 534
    :cond_0
    :goto_1
    return-void

    .line 530
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 531
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSPanel$H;->this$0:Lcom/android/systemui_ex/qs/QSPanel;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui_ex/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V
    invoke-static {v1, v0, v2}, Lcom/android/systemui_ex/qs/QSPanel;->access$1100(Lcom/android/systemui_ex/qs/QSPanel;Landroid/view/View;I)V

    goto :goto_1
.end method
