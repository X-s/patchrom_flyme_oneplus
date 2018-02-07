.class final Lcom/android/settings_ex/datausage/DataUsageSummary$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings_ex/dashboard/SummaryLoader;)Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 408
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageSummary$SummaryProvider;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/dashboard/SummaryLoader;)V

    return-object v0
.end method
