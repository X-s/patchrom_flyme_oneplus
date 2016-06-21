.class Lcom/android/systemui_ex/recents/views/TaskStackView$2;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/TaskStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/recents/views/TaskStackView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$2;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$2;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 134
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/systemui_ex/recents/views/TaskStackView$2;->this$0:Lcom/android/systemui_ex/recents/views/TaskStackView;

    invoke-virtual {v3, v1}, Lcom/android/systemui_ex/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui_ex/recents/views/TaskView;

    .line 136
    .local v2, "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/views/TaskView;->startNoUserInteractionAnimation()V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "tv":Lcom/android/systemui_ex/recents/views/TaskView;
    :cond_0
    return-void
.end method
