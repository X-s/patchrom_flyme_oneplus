.class Lcom/android/systemui_ex/recents/views/TaskView$9;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui_ex/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui_ex/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskView$9;->this$0:Lcom/android/systemui_ex/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui_ex/recents/views/TaskView$9;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui_ex/recents/views/TaskView$9;->val$tv:Lcom/android/systemui_ex/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method
