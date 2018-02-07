.class Lcom/android/settings_ex/applications/InstalledAppDetails$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;->handleHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/InstalledAppDetails;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iput-object p2, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 430
    return-void
.end method
