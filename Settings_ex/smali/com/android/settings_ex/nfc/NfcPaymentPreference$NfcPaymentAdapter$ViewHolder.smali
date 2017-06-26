.class public Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NfcPaymentPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public radioButton:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter$ViewHolder;->this$1:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
