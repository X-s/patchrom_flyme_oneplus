.class public Lcom/android/settings_ex/datausage/NetworkRestrictionsPreference;
.super Landroid/support/v7/preference/Preference;
.source "NetworkRestrictionsPreference.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/TemplatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .prologue
    .line 30
    return-void
.end method
