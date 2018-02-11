.class Lcom/android/settings_ex/gestures/GesturePreference$1;
.super Ljava/lang/Object;
.source "GesturePreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/gestures/GesturePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/gestures/GesturePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/gestures/GesturePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/gestures/GesturePreference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/gestures/GesturePreference$1;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/gestures/GesturePreference$1;->this$0:Lcom/android/settings_ex/gestures/GesturePreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings_ex/gestures/GesturePreference;->-set1(Lcom/android/settings_ex/gestures/GesturePreference;Z)Z

    .line 72
    return-void
.end method
