.class Lcom/android/systemui_ex/recents/views/TaskView$6;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui_ex/recents/views/ViewAnimation$TaskViewEnterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView$6;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui_ex/recents/views/TaskView$6;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/views/TaskView;->enableFocusAnimations()V

    .line 389
    return-void
.end method
