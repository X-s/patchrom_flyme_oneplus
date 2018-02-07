.class Lcom/android/settings_ex/localepicker/LocaleListEditor$5;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/localepicker/LocaleListEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/LocaleListEditor;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->-set0(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->-set1(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)Z

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->-get0(Lcom/android/settings_ex/localepicker/LocaleListEditor;)Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->removeChecked()V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-static {v0, v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->-wrap0(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)V

    .line 216
    return-void
.end method
