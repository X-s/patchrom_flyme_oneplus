.class public Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;
.super Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;
.source "NotificationOverflowContainer.java"


# instance fields
.field private mDark:Z

.field private mIconsView:Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

.field private mViewInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getIconsView()Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 43
    const v0, 0x7f0f0161

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    .line 44
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    const v0, 0x7f0f015f

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;->setMoreText(Landroid/widget/TextView;)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;

    const v1, 0x7f0f0160

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/NotificationOverflowIconsView;->setOverflowIndicator(Landroid/view/View;)V

    .line 46
    new-instance v0, Lcom/android/systemui_ex/ViewInvertHelper;

    const v1, 0x7f0f015e

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui_ex/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;

    .line 48
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mDark:Z

    .line 55
    if-eqz p2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui_ex/ViewInvertHelper;->fade(ZJ)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui_ex/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method
