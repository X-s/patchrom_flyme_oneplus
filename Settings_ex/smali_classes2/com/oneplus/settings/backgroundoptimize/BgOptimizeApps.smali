.class public Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;
.super Lcom/android/settings_ex/applications/ManageApplications;
.source "BgOptimizeApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;,
        Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;-><init>()V

    .line 73
    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;-><init>()V

    return-void
.end method
