.class Lcom/android/settings_ex/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DateTimeSettings;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DateTimeSettings;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DateTimeSettings;Landroid/app/Activity;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DateTimeSettings;
    .param p2, "val$activity"    # Landroid/app/Activity;
    .param p3, "val$year"    # I
    .param p4, "val$month"    # I
    .param p5, "val$day"    # I

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings_ex/DateTimeSettings$4;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    iput-object p2, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$year:I

    iput p4, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$month:I

    iput p5, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$year:I

    iget v2, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$month:I

    iget v3, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$day:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/DateTimeSettings$4;->this$0:Lcom/android/settings_ex/DateTimeSettings;

    iget-object v1, p0, Lcom/android/settings_ex/DateTimeSettings$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 199
    return-void
.end method
