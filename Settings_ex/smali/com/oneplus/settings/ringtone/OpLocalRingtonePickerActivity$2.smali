.class Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "OpLocalRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->updateExternalFile(Landroid/preference/Preference;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    const v2, 0x7f09011b

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    return-void
.end method
