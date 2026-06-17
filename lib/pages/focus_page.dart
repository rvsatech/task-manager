import 'package:flutter/material.dart';

class FocusPage extends StatelessWidget {
  const FocusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,

                    child: IconButton(
                      padding: EdgeInsets.zero,

                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          '/',
                        );
                      },

                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                      ),
                    ),
                  ),

                  const Text(
                    'Modo Foco',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,

                    child: Icon(
                      Icons.settings,
                      size: 18,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(18),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.05,
                      ),
                      blurRadius: 10,
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,

                      children: [
                        const Text(
                          'TAREFA ATUAL',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),

                          decoration: BoxDecoration(
                            color: const Color(
                              0xFFFEE2E2,
                            ),

                            borderRadius:
                                BorderRadius.circular(
                              8,
                            ),
                          ),

                          child: const Text(
                            'ALTA PRIORIDADE',
                            style: TextStyle(
                              color: Color(
                                0xFFEF4444,
                              ),
                              fontSize: 9,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Estudar UX/UI',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 14,
                          color: Colors.grey,
                        ),

                        SizedBox(width: 4),

                        Text(
                          '25 min',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: 220,
                height: 220,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(
                      0xFFE2E8F0,
                    ),
                    width: 8,
                  ),
                ),

                child: Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,

                    children: const [
                      Text(
                        '25:00',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight:
                              FontWeight.bold,
                          color: Color(
                            0xFF0F172A,
                          ),
                        ),
                      ),

                      SizedBox(height: 6),

                      Text(
                        'Sessão de foco',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,

                      child: ElevatedButton(
                        onPressed: () {},

                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(
                            0xFF2563EB,
                          ),

                          foregroundColor:
                              Colors.white,
                        ),

                        child: const Text(
                          'Iniciar',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: SizedBox(
                      height: 50,

                      child: ElevatedButton(
                        onPressed: () {},

                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(
                            0xFFE2E8F0,
                          ),

                          foregroundColor:
                              const Color(
                            0xFF475569,
                          ),
                        ),

                        child: const Text(
                          'Pausar',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Container(
                    width: 50,
                    height: 50,

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(
                          0xFFFECACA,
                        ),
                      ),

                      borderRadius:
                          BorderRadius.circular(
                        12,
                      ),
                    ),

                    child: const Icon(
                      Icons.stop,
                      color: Color(
                        0xFFEF4444,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(16),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,

                      children: const [
                        Text(
                          'Progresso diário',
                          style: TextStyle(
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        Text(
                          'Sessão 1 de 4',
                          style: TextStyle(
                            color:
                                Color(0xFF2563EB),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10),

                      child:
                          const LinearProgressIndicator(
                        value: 0.30,
                        minHeight: 8,
                        backgroundColor:
                            Color(0xFFE2E8F0),
                        color: Color(0xFF2563EB),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              _settingTile(
                Icons.volume_off,
                'Modo silencioso',
                true,
              ),

              const SizedBox(height: 12),

              _settingTile(
                Icons.block,
                'Bloquear notificações',
                false,
              ),

              const SizedBox(height: 12),

              _settingTile(
                Icons.music_note,
                'Música ambiente',
                false,
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: const Color(
                    0xFFEFF6FF,
                  ),

                  borderRadius:
                      BorderRadius.circular(16),
                ),

                child: const Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lightbulb,
                          color: Color(
                            0xFF2563EB,
                          ),
                        ),

                        SizedBox(width: 8),

                        Text(
                          'Dica rápida',
                          style: TextStyle(
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Text(
                      'Concentre-se por 25 minutos e faça uma pausa de 5.',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(16),
                ),

                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.emoji_events,
                          color:
                              Color(0xFFF59E0B),
                        ),

                        SizedBox(width: 8),

                        Text(
                          'Recompensa',
                          style: TextStyle(
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    const Align(
                      alignment:
                          Alignment.centerLeft,

                      child: Text(
                        '+20 pontos por concluir a sessão',
                      ),
                    ),

                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,

                      children: const [
                        Text(
                          'NÍVEL 3',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        Text(
                          'NÍVEL 4',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),

                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(8),

                      child:
                          const LinearProgressIndicator(
                        value: 0.75,
                        minHeight: 8,
                        backgroundColor:
                            Color(0xFFFFE7BA),
                        color: Color(0xFFF59E0B),
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Faltam 40 XP para subir de nível',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _settingTile(
    IconData icon,
    String title,
    bool enabled,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),

      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 18,
                color: const Color(
                  0xFF64748B,
                ),
              ),

              const SizedBox(width: 12),

              Text(title),
            ],
          ),

          Switch(
            value: enabled,
            onChanged: (_) {},
            activeColor:
                const Color(0xFF2563EB),
          ),
        ],
      ),
    );
  }
}