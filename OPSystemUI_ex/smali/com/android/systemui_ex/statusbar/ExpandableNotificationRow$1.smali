.class Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    check-cast p2, Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .end local p2    # "inflated":Landroid/view/View;
    # setter for: Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;
    invoke-static {v0, p2}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->access$002(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;Lcom/android/systemui_ex/statusbar/NotificationGuts;)Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .line 188
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    # getter for: Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->access$000(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)Lcom/android/systemui_ex/statusbar/NotificationGuts;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    # getter for: Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui_ex/statusbar/NotificationGuts;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->access$000(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)Lcom/android/systemui_ex/statusbar/NotificationGuts;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 190
    return-void
.end method
