.class Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    .prologue
    .line 2408
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$400(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/DismissView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/DismissView;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$400(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/DismissView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2413
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # invokes: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$300(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2414
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout$3;->this$0:Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;

    # getter for: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui_ex/statusbar/DismissView;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$400(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui_ex/statusbar/DismissView;

    move-result-object v1

    # invokes: Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;->access$500(Lcom/android/systemui_ex/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui_ex/statusbar/ExpandableView;)V

    .line 2415
    return-void
.end method
