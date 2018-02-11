.class Lcom/android/settings_ex/applications/DefaultBrowserPreference$1;
.super Ljava/lang/Object;
.source "DefaultBrowserPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultBrowserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultBrowserPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference$1;->this$0:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/applications/DefaultBrowserPreference$1;->this$0:Lcom/android/settings_ex/applications/DefaultBrowserPreference;

    invoke-static {v0}, Lcom/android/settings_ex/applications/DefaultBrowserPreference;->-wrap0(Lcom/android/settings_ex/applications/DefaultBrowserPreference;)V

    .line 188
    return-void
.end method
