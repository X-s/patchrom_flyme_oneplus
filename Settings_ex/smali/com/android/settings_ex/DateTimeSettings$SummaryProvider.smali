.class Lcom/android/settings_ex/DateTimeSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 399
    iput-object p2, p0, Lcom/android/settings_ex/DateTimeSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 397
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 404
    if-eqz p1, :cond_0

    .line 405
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 407
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 406
    invoke-static {v2, v3}, Lcom/android/settings_exlib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 403
    .end local v0    # "now":Ljava/util/Calendar;
    :cond_0
    return-void
.end method
