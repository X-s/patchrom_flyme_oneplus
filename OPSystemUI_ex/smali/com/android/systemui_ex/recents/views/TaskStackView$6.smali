.class Lcom/android/systemui_ex/recents/views/TaskStackView$6;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

.field final synthetic val$t:Lcom/android/systemui_ex/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskStackView;Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$6;->val$t:Lcom/android/systemui_ex/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$6;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    iget-object v0, v0, Lcom/android/systemui_ex/recents/views/TaskStackView;->mStack:Lcom/android/systemui_ex/recents/model/TaskStack;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$6;->val$t:Lcom/android/systemui_ex/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/TaskStack;->removeTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 1342
    return-void
.end method
