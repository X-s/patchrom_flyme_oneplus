.class Lcom/android/settings_ex/FingerprintAndPWD$6;
.super Ljava/lang/Object;
.source "FingerprintAndPWD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerprintAndPWD;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerprintAndPWD;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    iput-object p2, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->val$key:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->val$key:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->val$value:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1101
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->this$0:Lcom/android/settings_ex/FingerprintAndPWD;

    # getter for: Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    invoke-static {v0}, Lcom/android/settings_ex/FingerprintAndPWD;->access$200(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->val$key:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/FingerprintAndPWD$6;->val$value:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->updateOPFingerToggle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    return-void
.end method
