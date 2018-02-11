.class Lcom/android/settings_ex/display/NightDisplaySettings$1;
.super Ljava/lang/Object;
.source "NightDisplaySettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/display/NightDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/display/NightDisplaySettings;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/display/NightDisplaySettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/display/NightDisplaySettings;
    .param p2, "val$dialogId"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings_ex/display/NightDisplaySettings$1;->this$0:Lcom/android/settings_ex/display/NightDisplaySettings;

    iput p2, p0, Lcom/android/settings_ex/display/NightDisplaySettings$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/app/NightDisplayController$LocalTime;-><init>(II)V

    .line 147
    .local v0, "time":Lcom/android/internal/app/NightDisplayController$LocalTime;
    iget v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings$1;->val$dialogId:I

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings$1;->this$0:Lcom/android/settings_ex/display/NightDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/display/NightDisplaySettings;->-get0(Lcom/android/settings_ex/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/app/NightDisplayController;->setCustomStartTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z

    .line 144
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplaySettings$1;->this$0:Lcom/android/settings_ex/display/NightDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/display/NightDisplaySettings;->-get0(Lcom/android/settings_ex/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/app/NightDisplayController;->setCustomEndTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z

    goto :goto_0
.end method
