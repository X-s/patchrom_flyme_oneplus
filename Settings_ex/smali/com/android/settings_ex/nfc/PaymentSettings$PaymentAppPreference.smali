.class public Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;
.super Landroid/preference/Preference;
.source "PaymentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/PaymentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentAppPreference"
.end annotation


# instance fields
.field private final appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

.field private final listener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 211
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->setLayoutResource(I)V

    .line 212
    iput-object p2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 213
    iput-object p3, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    .line 214
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 220
    const v2, 0x1020019

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 221
    .local v1, "radioButton":Landroid/widget/RadioButton;
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    iget-boolean v2, v2, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 222
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 225
    const v2, 0x7f0f00fd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    .local v0, "banner":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v2, v2, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v2, p0, Lcom/android/settings_ex/nfc/PaymentSettings$PaymentAppPreference;->appInfo:Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 229
    return-void
.end method
