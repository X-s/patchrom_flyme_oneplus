.class Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/IconMerger;Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;->val$moreRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui_ex/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;->val$moreRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui_ex/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->updateStatusbarIconColor(Landroid/view/View;)V

    .line 126
    return-void

    .line 122
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
