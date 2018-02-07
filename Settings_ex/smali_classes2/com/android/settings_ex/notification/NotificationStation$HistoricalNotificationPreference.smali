.class Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;
.super Lcom/android/settings_ex/CopyablePreference;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoricalNotificationPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CopyablePreference;-><init>(Landroid/content/Context;)V

    .line 536
    const v0, 0x7f0400ba

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->setLayoutResource(I)V

    .line 537
    iput-object p2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    .line 534
    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 573
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 574
    const-string/jumbo v1, " ["

    .line 573
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 575
    const-string/jumbo v1, "]\n"

    .line 573
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 573
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 576
    const-string/jumbo v1, "\n"

    .line 573
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    .line 573
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "row"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/android/settings_ex/CopyablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 544
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 545
    const/high16 v1, 0x7f110000

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 548
    const v1, 0x7f1101b6

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    :cond_1
    const v1, 0x7f1101b7

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-wide v2, v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 552
    const v1, 0x7f110063

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    const v1, 0x7f1101b8

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const v1, 0x7f1101b9

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 556
    .local v0, "extra":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->extra:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 560
    new-instance v2, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference$1;-><init>(Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;Landroid/widget/TextView;)V

    .line 559
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationPreference;->mInfo:Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;

    iget-boolean v1, v1, Lcom/android/settings_ex/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 541
    return-void

    .line 568
    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public performClick()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method
