.class Lcom/android/systemui_ex/volume/ZenModePanel$10;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui_ex/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/systemui_ex/volume/ZenModePanel$10;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$10;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # invokes: Lcom/android/systemui_ex/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$2300(Lcom/android/systemui_ex/volume/ZenModePanel;)V

    .line 919
    return-void
.end method

.method public onSelected(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 905
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$10;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui_ex/volume/SegmentedButtons;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$2200(Lcom/android/systemui_ex/volume/ZenModePanel;)Lcom/android/systemui_ex/volume/SegmentedButtons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui_ex/volume/SegmentedButtons;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/ZenModePanel$10;->this$0:Lcom/android/systemui_ex/volume/ZenModePanel;

    # getter for: Lcom/android/systemui_ex/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/ZenModePanel;->access$900(Lcom/android/systemui_ex/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZenButtonsCallback selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    new-instance v0, Lcom/android/systemui_ex/volume/ZenModePanel$10$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/volume/ZenModePanel$10$1;-><init>(Lcom/android/systemui_ex/volume/ZenModePanel$10;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 914
    :cond_1
    return-void
.end method
