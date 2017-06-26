.class public Lcom/android/settings_ex/accounts/ProviderPreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setPersistent(Z)V

    .line 37
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
