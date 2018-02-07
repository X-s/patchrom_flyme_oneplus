.class Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;
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
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 743
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 741
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;->-wrap1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "localeNames":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 747
    .end local v0    # "localeNames":Ljava/lang/String;
    :cond_0
    return-void
.end method
