.class Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;

.field final synthetic val$extra:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;
    .param p2, "val$extra"    # Landroid/widget/TextView;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;->this$1:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;

    iput-object p2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;->val$extra:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 564
    const/16 v0, 0x8

    .line 563
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    return-void
.end method
