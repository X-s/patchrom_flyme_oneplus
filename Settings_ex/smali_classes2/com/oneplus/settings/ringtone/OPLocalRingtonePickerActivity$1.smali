.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "OPLocalRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->-get6(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->-set0(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Z)Z

    .line 143
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 146
    packed-switch p3, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->-wrap2(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->-wrap2(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;I)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
