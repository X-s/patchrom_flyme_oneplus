.class Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$1;
.super Ljava/lang/Object;
.source "ImportanceSeekBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$1;->this$0:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->-wrap1(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;)V

    .line 199
    return-void
.end method
