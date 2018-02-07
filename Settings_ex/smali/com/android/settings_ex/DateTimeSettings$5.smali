.class Lcom/android/settings_ex/DateTimeSettings$5;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DateTimeSettings;->onTimeSet(Landroid/widget/TimePicker;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettings;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$hourOfDay:I

.field final synthetic val$minute:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettings;Landroid/app/Activity;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DateTimeSettings;
    .param p2, "val$activity"    # Landroid/app/Activity;
    .param p3, "val$hourOfDay"    # I
    .param p4, "val$minute"    # I

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$5;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    iput-object p2, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$hourOfDay:I

    iput p4, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$minute:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$hourOfDay:I

    iget v2, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$minute:I

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings$5;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 214
    return-void
.end method
