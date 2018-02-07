.class Lcom/android/settings_exlib/wifi/AccessPointPreference$1;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/wifi/AccessPointPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/wifi/AccessPointPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/wifi/AccessPointPreference;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;->this$0:Lcom/android/settings_exlib/wifi/AccessPointPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;->this$0:Lcom/android/settings_exlib/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->notifyChanged()V

    .line 265
    return-void
.end method
