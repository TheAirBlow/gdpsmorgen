.class Lcom/google/android/gms/wearable/WearableListenerService$zza$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/WearableListenerService$zza;->zza(Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbrs:Lcom/google/android/gms/wearable/WearableListenerService$zza;

.field final synthetic zzbrx:Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService$zza;Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$7;->zzbrs:Lcom/google/android/gms/wearable/WearableListenerService$zza;

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$7;->zzbrx:Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$7;->zzbrs:Lcom/google/android/gms/wearable/WearableListenerService$zza;

    iget-object v0, v0, Lcom/google/android/gms/wearable/WearableListenerService$zza;->zzbrq:Lcom/google/android/gms/wearable/WearableListenerService;

    check-cast v0, Lcom/google/android/gms/wearable/zzj;

    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService$zza$7;->zzbrx:Lcom/google/android/gms/wearable/internal/AncsNotificationParcelable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/zzj;->zza(Lcom/google/android/gms/wearable/zzd;)V

    return-void
.end method
