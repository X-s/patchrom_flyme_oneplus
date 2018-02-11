.class public Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;
.super Landroid/widget/Spinner;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReselectionSpinner"
.end annotation


# instance fields
.field private pref:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    return-void
.end method


# virtual methods
.method public setPreference(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    .line 231
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 238
    .local v1, "previousSelectedPosition":I
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 239
    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-static {v2}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->-wrap1(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->-wrap4(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;Z)V

    .line 241
    iget-object v2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->pref:Lcom/android/settings_ex/notification/RestrictedDropDownPreference;

    invoke-static {v2, p1}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference;->-wrap3(Lcom/android/settings_ex/notification/RestrictedDropDownPreference;I)Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;

    move-result-object v0

    .line 242
    .local v0, "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$ReselectionSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 244
    iget-object v3, v0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 243
    invoke-static {v2, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 236
    .end local v0    # "item":Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
    :cond_0
    return-void
.end method
