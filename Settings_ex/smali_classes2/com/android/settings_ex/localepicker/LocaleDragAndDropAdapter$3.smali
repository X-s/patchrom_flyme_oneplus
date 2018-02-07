.class Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get2(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-get3(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-set0(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0, v2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-set1(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->-set2(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    .line 367
    return-void
.end method
