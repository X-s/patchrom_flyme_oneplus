.class Lcom/android/settings_ex/localepicker/LocaleListEditor$6;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings_ex/localepicker/LocaleListEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/localepicker/LocaleListEditor;->-set1(Lcom/android/settings_ex/localepicker/LocaleListEditor;Z)Z

    .line 234
    return-void
.end method
