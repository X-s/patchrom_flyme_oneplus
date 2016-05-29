.class Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "OpLocalRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
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
    .line 101
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

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

    .line 107
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # getter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->isFirst:Z
    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$000(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # setter for: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->isFirst:Z
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$002(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Z)Z

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 112
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    # invokes: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->startTask(I)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;I)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;->this$0:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->startTask(I)V
    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->access$100(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;I)V

    goto :goto_0

    .line 112
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
    .line 127
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
